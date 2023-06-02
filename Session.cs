using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VelvetEyebrows_Kunavin.Models;

namespace VelvetEyebrows_Kunavin
{
    class Session
    {
        private Session()
        {
            context = new VelvetEyebrows_KunavinPR33Context();
        }

        private static Session? instance;
        public static Session Instance
        {
            //get { return (instance != null) ? instance : instance = new Session(); }
            get
            {
                if (instance == null)
                {
                    instance = new Session();
                }
                return instance;
            }
        }

        private VelvetEyebrows_KunavinPR33Context context;
        public VelvetEyebrows_KunavinPR33Context Context => context;
    }
}
